package com.skill
{
	import com.gameObject.*;
	/*
	* 生死流转斩
	* 0~2费1物理伤害.缓攻.+1生死流转.
	* 1~2费2物理伤害.+1生死流转.
	* 2~2费2物理伤害.魔免.-2生死流转.
	*/
	public class Skill7 extends MultipleSkill
	{
		public override function get cost():int
		{
			//error
			return -1;
		}
		
		public function Skill7()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="生死流转斩";
			typeList=[];
			cost=-1;
			childSkillList=[new Skill7_0(),new Skill7_1(),new Skill7_2()];
		}
		
		public override function getChildSkill(host:PlayerBase):SkillBase
		{
			var result:SkillBase=null;
			switch(host.getBuffCount("生死流转"))
			{
				case 0:
					result=childSkillList[0];
					break;
				case 1:
					result=childSkillList[1];
					break;
				default:
					result=childSkillList[2];
					break;
			}
			//currentChild=result;
			return result;
		}
	}
}