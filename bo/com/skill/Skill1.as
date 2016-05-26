package com.skill
{
	import com.effect.*;
	
	public class Skill1 extends SkillBase
	{
		public function Skill1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="波";
			typeList=[];
			cost=1;
			
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			effectList=[tempEffect];
		}
	}
}