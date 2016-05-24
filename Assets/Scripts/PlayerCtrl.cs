﻿using UnityEngine;
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
	public void PlayerDefend()
	{
		m_player.currentSkill = Skill.DEFEND;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
	public void PlayerState()
	{
		m_player.currentSkill = Skill.STATE;
		m_state = PLAYERSTATE.WAITING;
		ForbidButton ();
	}
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
	private void ForbidButton()
	{
		foreach (Button button in buttons) {
			button.interactable = false;
		}
	}
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