using System.Collections;
public enum Skill
{
	STATE = 0,
	BOO,
	BOO_lv1,
	BOO_lv2,
	DEFEND

}
struct PlayerInfos
{
	private bool m_isDesd;
	private int m_life;
	private int m_skill_Level;
	
	public bool isDead{get{return m_isDesd;}}
	public int skill_Level{get{return m_skill_Level;}}
	public int life{get{return m_life;}}
	public void Init()
	{
		Init (3, 0);
	}
	public void Init(int _life, int _charged_Skill)
	{
		m_life = _life;
		m_skill_Level = _charged_Skill;
		m_isDesd = false;
	}
	public void ChangeSkillLevel(int _num)
	{

		m_skill_Level += m_skill_Level > 2? 0:_num;

	}
	public void ChangeLife(int _num)
	{
		m_life += _num;
		if (m_life <= 0)
			m_isDesd = true;
	}
}
public class Player {

	private PlayerInfos m_playerInfo;
	private Skill m_currentSkill;

	public int life{ get { return m_playerInfo.life; } }
	public bool isDead{ get {return m_playerInfo.isDead;}}
	public int playerSkillLevel {get{return m_playerInfo.skill_Level;}}
	public Skill currentSkill{set {m_currentSkill = value;} get{return m_currentSkill;}}
	// Use this for initialization
	public void Init () {
		m_playerInfo.Init ();
		m_currentSkill = Skill.DEFEND;
	}
	public void CompareSkill(Skill enemySkill) {
		int changeLife = 0;
		int changeSkillLevel = 0;
		int currentAttack = 0;
		if (m_currentSkill == Skill.DEFEND) {
			currentAttack = 2;
		} else {
			currentAttack = (short)(m_currentSkill);
			if (m_currentSkill == Skill.STATE)
				changeSkillLevel += 1;
			else
				changeSkillLevel -= currentAttack;
		}
		int enemyAttact = (int)enemySkill;
		if (enemySkill == Skill.DEFEND)
			enemyAttact = 0;
		changeLife = (currentAttack - enemyAttact) > 0 ? 0 : (currentAttack - enemyAttact);
		m_playerInfo.ChangeLife (changeLife);
		m_playerInfo.ChangeSkillLevel (changeSkillLevel);
	}
}
