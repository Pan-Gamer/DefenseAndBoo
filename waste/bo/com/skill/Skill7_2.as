package com.skill
{
	import com.effect.*;
	
	public class Skill7_2 extends SkillBase
	{
		public function Skill7_2()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="生死流转2";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.isAttack=false;
			tempEffect0.isMagic=false;
			tempEffect0.isPhysics=false;
			tempEffect0.point=2;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=2;
			var tempEffect3=new RemoveBuffEffect();
			tempEffect3.target=0;
			tempEffect3.isAttack=false;
			tempEffect3.isMagic=false;
			tempEffect3.isPhysics=false;
			tempEffect3.buffType="生死流转";
			tempEffect3.point=3;
			var tempEffect4=new AddBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isAttack=false;
			tempEffect4.isMagic=false;
			tempEffect4.isPhysics=false;
			tempEffect4.buffType="魔免";
			tempEffect4.buffDuration=1;
			effectList=[tempEffect0,tempEffect,tempEffect3,tempEffect4];
		}
	}
}