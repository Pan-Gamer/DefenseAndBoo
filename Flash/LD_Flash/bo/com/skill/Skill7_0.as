package com.skill
{
	import com.effect.*;
	
	public class Skill7_0 extends ChildSkill
	{
		public function Skill7_0()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="生死流转0";
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
			tempEffect.point=1;
			tempEffect.attackSpeed=1;
			var tempEffect3=new AddBuffEffect();
			tempEffect3.target=0;
			tempEffect3.isAttack=false;
			tempEffect3.isMagic=false;
			tempEffect3.isPhysics=true;
			tempEffect3.buffType="生死流转";
			tempEffect3.buffDuration=2;
			var tempEffect4=new SingleEffect();
			tempEffect4.type="前摇";
			effectList=[tempEffect0,tempEffect,tempEffect3,tempEffect4];
		}
	}
}