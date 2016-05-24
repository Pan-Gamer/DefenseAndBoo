using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public enum PLAYERSTATE{
	SELECTING = 0,
	WAITING,
	DEAD
}
public class PlayerCtrl : MonoBehaviour {
	Player m_player;
	PLAYERSTATE m_state = PLAYERSTATE.SELECTING;
	[SerializeField]
	Button[] buttons;
	[SerializeField]
	Text lifeValue;
	public Skill playerSelectedSkill{
		get{return m_player.currentSkill;}
	}
	public PLAYERSTATE state {get{return m_state;}}
	// Use this for initialization
	void Start () {
		m_player = new Player ();
		m_player.Init ();
		if (buttons.Length < 5)
			print ("Button number less then 4");
		UpdateButton ();
	}

	// Update is called once per frame
	void Update () {
	
	}
    //按钮函数
    //直接拖到按钮UI下，点击按钮触发相应函数
    //--------------------------------------------------------------------
    //防
	public void PlayerDefend()
	{
		m_player.currentSkill = Skill.DEFEND;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
    //攒
	public void PlayerState()
	{
		m_player.currentSkill = Skill.STATE;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
    //波
	public void PlayerBoo()
	{
		m_player.currentSkill = Skill.BOO;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
	public void PlayerBooLv1()
	{
		m_player.currentSkill = Skill.BOO_lv1;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
	public void PlayerBooLv2()
	{
		m_player.currentSkill = Skill.BOO_lv2;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
    //玩家回合结束结算
	public void EndRound(Skill enemySkill)
	{
		m_player.CompareSkill (enemySkill);
		if (m_player.isDead)
			m_state = PLAYERSTATE.DEAD;
		else
			m_state = PLAYERSTATE.SELECTING;

		UpdateButton ();
	}
	public int GetplayerSkillLevel()
	{
		return m_player.playerSkillLevel;
	}
	public void ReStart()
	{
		m_player.Init ();
		if (buttons.Length < 5)
			print ("Button number less then 4");
		UpdateButton ();
	}
    //----------------------------------------------------------------
    //等待结算，按钮禁止
	private void ForbidButton()
	{
		foreach (Button button in buttons) {
			button.interactable = false;
		}
	}
    //结算结算，更新按钮
	private void UpdateButton()
	{
		int skillLevel = m_player.playerSkillLevel;
		for(int i = 0; i < buttons.Length; i++)
		{
			if( i <= skillLevel + 1)
				buttons[i].interactable = true;
			else
				buttons[i].interactable = false;
		}
		lifeValue.text = m_player.life.ToString ();
	}
}
