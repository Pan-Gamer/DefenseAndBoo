package com.skill
{
	import com.effect.*;
	
	public class Skill0 extends SkillBase
	{
		public function Skill0()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="砍";
			typeList=[];
			cost=1;
			
			var tempEffect=new DamageEffect();
			tempEffect.target=1;
			tempEffect.isAttack=true;
			tempEffect.isMagic=false;
			tempEffect.isPhysics=true;
			var tempEffect2=new SingleEffect();
			tempEffect2.type="缓攻";
			var tempEffect3=new SingleEffect();
			tempEffect3.type="前摇";
			effectList=[tempEffect,tempEffect2,tempEffect3];
		}
	}
}