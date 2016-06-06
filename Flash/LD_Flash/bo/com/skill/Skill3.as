package com.skill
{
	import com.effect.*;
	
	public class Skill3 extends SkillBase
	{
		public function Skill3()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="防";
			typeList=[];
			cost=0;
			
			var tempEffect=new AddBuffEffect();
			tempEffect.target=0;
			tempEffect.isAttack=false;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.buffType="防";
			tempEffect.buffDuration=1;
			effectList=[tempEffect];
		}
	}
}