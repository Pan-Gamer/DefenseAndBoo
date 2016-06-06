package com.skill
{
	import com.effect.*;
	
	public class Skill_3_1_1 extends SkillBase
	{
		public function Skill_3_1_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="弦月斩1";
			typeList=[];
			cost=2;
			
			var tempEffect0=new CostEffect();
			tempEffect0.target=0;
			tempEffect0.point=2;
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.point=2;
			tempEffect.attackSpeed=2;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="前摇";
			var tempEffect3=new SingleEffect();
			tempEffect3.type="必中";
			var tempEffect4=new RemoveBuffEffect();
			tempEffect4.target=0;
			tempEffect4.isPhysics=true;
			tempEffect4.buffType="收刀入鞘";
			tempEffect4.point=-1;
			effectList=[tempEffect0,tempEffect,tempEffect3];
		}
	}
}