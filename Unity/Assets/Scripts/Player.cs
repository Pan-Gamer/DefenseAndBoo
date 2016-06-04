using System.Collections.Generic;
public enum Skill
{
	STATE = 0,
	BOO,
	BOO_lv1,
	BOO_lv2,
	DEFEND

}
//玩家信息
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
    private List<Skill> m_segmentSkills;
    public int life{ get { return m_playerInfo.life; } }
	public bool isDead{ get {return m_playerInfo.isDead;}}
	public int playerSkillLevel {get{return m_playerInfo.skill_Level;}}
	public Skill currentSkill{set {m_currentSkill = value;} get{return m_currentSkill;}}
	// Use this for initialization
	public void Init () {
		m_playerInfo.Init ();
        m_segmentSkills.Clear();
		m_currentSkill = Skill.DEFEND;
	}
    //对比技能
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
    //片段结算
    public Skill SegmentFinal()
    {
        int[] num_skill = new int[5];

        foreach(Skill skill in m_segmentSkills)
            num_skill[(int)skill] += 1;
        int skillNum = 0;
        int sameSkill = 0;
        int maxSkill = 0;
        for (int i = 0; i < 5; i++)
        {
            if(num_skill[i] >maxSkill)
            {
                maxSkill = num_skill[i];
                skillNum = i;
                sameSkill = 1;
            }else if(num_skill[i] == maxSkill && maxSkill != 0)
            {
                sameSkill += 1;
            }
        }
        m_segmentSkills.Clear();
        if (sameSkill > 1)
            return Skill.DEFEND;
        else
            return Skill.STATE + skillNum;

    }
    public void SetSegmentSkill(Skill skill)
    {
        m_segmentSkills.Add(skill);
    }
}

