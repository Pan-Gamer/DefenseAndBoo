package com.skill
{
	import com.effect.*;
	import com.gameObject.*;
	/*
	* 弦月斩
	* 2费,缓攻,物理攻击打1,必中.
	* 收刀入鞘:-收刀入鞘,正常速度打2.
	*/
	
	public class Skill_3_1 extends MultipleSkill
	{
		public override function get cost():int
		{
			//error
			return -1;
		}
		
		public function Skill_3_1()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="弦月斩";
			typeList=[];
			cost=-1;
			childSkillList=[new Skill_3_1_0(),new Skill_3_1_1()];
		}
		
		public override function getChildSkill(host:PlayerBase):SkillBase
		{
			var result:SkillBase=null;
			switch(host.getBuffCount("收刀入鞘"))
			{
				case 0:
					result=childSkillList[0];
					break;
				case 1:
				default:
					result=childSkillList[1];
					break;
			}
			return result;
		}
	}
}