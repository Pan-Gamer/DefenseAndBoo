package com.skill
{
	public class BuffBase
	{
		protected var buffType:String="BuffBase";
		public var duration:int=0;
		public var name:String="";
		
		public function get type():String
		{
			return buffType;
		}
	}
}