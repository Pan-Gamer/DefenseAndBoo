package com.skill
{
	import com.effect.*;
	/*
	* 蓄力,前摇,魔免,3费打2物理攻击
	*/
	public class Skill6 extends SkillBase
	{
		public function Skill6()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="心抄斩";
			typeList=[];
			cost=3;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=3;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=2;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="蓄力";
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			var tempEffect4=new AddBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isAttack=false;
			tempEffect4.buffType=2;
			tempEffect4.buffDuration=1;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3,tempEffect4];
		}
	}
}