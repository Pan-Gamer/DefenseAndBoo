package com.skill
{
	import com.effect.*;
	
	public class Skill4 extends SkillBase
	{
		public function Skill4()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="闪";
			typeList=[];
			cost=0;
			
			var tempEffect=new AddBuffEffect();
			tempEffect.target=0;
			tempEffect.isAttack=false;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			tempEffect.buffType="闪";
			tempEffect.buffDuration=1;
			effectList=[tempEffect];
		}
	}
}