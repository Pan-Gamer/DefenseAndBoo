package com.skill
{
	import com.effect.*;
	
	public class Skill2 extends SkillBase
	{
		public function Skill2()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="攒";
			typeList=[];
			cost=0;
			
			var tempEffect=new GainManaEffect();
			tempEffect.target=0;
			tempEffect.isAttack=false;
			tempEffect.isMagic=true;
			tempEffect.isPhysics=false;
			effectList=[tempEffect];
		}
	}
}