package com.skill
{
	import com.effect.*;
	
	public class Skill_3_2_1 extends SkillBase
	{
		public function Skill_3_2_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="倾袈斩1";
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
			tempEffect.attackSpeed=0;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="破防";
			var tempEffect3=new RemoveBuffEffect();
			tempEffect3.target=0;
			tempEffect3.isPhysics=true;
			tempEffect3.buffType="收刀入鞘";
			tempEffect3.point=-1;
			effectList=[tempEffect0,tempEffect,tempEffect2,tempEffect3];
		}
	}
}