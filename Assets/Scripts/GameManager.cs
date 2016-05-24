using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	[SerializeField]
	PlayerCtrl playerA;
	[SerializeField]
	PlayerCtrl playerB;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Run ();
	}
	void Run()
	{
		if (playerA.state == PLAYERSTATE.WAITING && playerB.state == PLAYERSTATE.WAITING) {
			playerA.EndRound(playerB.playerSelectedSkill);
			playerB.EndRound(playerA.playerSelectedSkill);
		}
		if (playerA.state == PLAYERSTATE.DEAD || playerB.state == PLAYERSTATE.DEAD) {
			playerA.ReStart();
			playerB.ReStart();
		}

	}
}
