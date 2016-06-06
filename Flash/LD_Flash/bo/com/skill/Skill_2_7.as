package com.skill
{
	import com.gameObject.*;
	import com.effect.*;
	/*
	* 小小军势
	* cd 8
	* -1mp,+3人偶.
	*/
	public class Skill_2_7 extends SkillBase
	{
		
		public function Skill_2_7()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="小小军势";
			typeList=[];
			cost=1;
			coolDown=0;
			coolDownMax=8;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=1;
			var tempEffect2=new AddBuffEffect();
			tempEffect2.target=0;
			tempEffect2.buffType="待机人偶";
			tempEffect2.buffDuration=-1;
			tempEffect2.point=3;
			effectList=[tempEffect0,tempEffect2];
		}
	}
}