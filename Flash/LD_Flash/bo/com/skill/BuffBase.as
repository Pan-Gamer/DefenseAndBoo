package com.skill
{
	/*
	* 对于复杂的buff,里面会包含effect,此时buff在系统中的地位等价于action或skill.
	* 或许未来会搞个共同祖先类,来表示"承载effect的东西".
	*/
	public class BuffBase
	{
		protected var buffType:String="BuffBase";
		public var duration:int=0;//剩余时间,注意1意味着直到回合结束.-1表示n/a.
		public var stackCount:int=1;//叠加层数
		public var stackCountMax:int=1;//层数上限
		public var stackAble:Boolean=true;
		public var compresenceAble:Boolean=false;//是否允许同时存在多个
		public var name:String="";
		
		public function get type():String
		{
			return buffType;
		}
		
		public function fade():Boolean
		{
			if(duration!=-1)
			{
				if(duration==0)
				{
					//error
					return false;
				}
				duration--;
				if(duration==0)
				{
					return true;
				}
			}
			return false;
		}
	}
}