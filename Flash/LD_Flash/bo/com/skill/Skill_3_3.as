package com.skill
{
	import com.effect.*;
	import com.gameObject.*;
	/*
	* 刀光一闪
	* 2费
	* 前摇,物理攻击打1.若有刀光一闪,-刀光一闪并+1mp;若没有则+1刀光一闪.
	* 收刀入鞘:-收刀入鞘,闪,前摇,物理攻击打1.若有刀光一闪,-刀光一闪并+1mp.
	*/
	
	public class Skill_3_3 extends MultipleSkill
	{
		public override function get cost():int
		{
			//error
			return -1;
		}
		
		public function Skill_3_3()
		{
			initTest();
		}
		
		public function initTest():void
		{
			name="刀光一闪";
			typeList=[];
			cost=-1;
			childSkillList=[new Skill_3_3_0(),new Skill_3_3_1()];
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