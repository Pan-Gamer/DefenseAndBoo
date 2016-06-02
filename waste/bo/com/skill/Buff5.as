package com.skill
{
	import com.util.*;
	
	public class Buff5 extends SingleBuff
	{
		public function Buff5()
		{
			initTest();
		}
		
		public function initTest():void
		{
			buffType="待机人偶";
			name="待机人偶";
			stackCountMax=10;
			stackAble=true;
			compresenceAble=false;
		}
	}
}