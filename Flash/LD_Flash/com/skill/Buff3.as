package com.skill
{
	public class Buff3 extends SingleBuff
	{
		public function Buff3()
		{
			initTest();
		}
		
		public function initTest():void
		{
			buffType="生死流转";
			name="生死流转";
			stackCountMax=2;
			stackAble=true;
			compresenceAble=false;
		}
	}
}