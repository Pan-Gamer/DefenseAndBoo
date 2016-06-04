using UnityEngine;
using System.Collections;
//最开始的脚本，控制两方玩家
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
        //当双方选择结束，结算双方信息
		if (playerA.state == PLAYERSTATE.WAITING && playerB.state == PLAYERSTATE.WAITING) {
			playerA.EndRound(playerB.playerSelectedSkill);
			playerB.EndRound(playerA.playerSelectedSkill);
		}
        //有一方血量为零，重新开始
		if (playerA.state == PLAYERSTATE.DEAD || playerB.state == PLAYERSTATE.DEAD) {
			playerA.ReStart();
			playerB.ReStart();
		}

	}
}
