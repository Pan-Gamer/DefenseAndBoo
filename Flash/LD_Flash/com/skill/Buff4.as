package com.skill
{
	import com.util.*;
	
	public class Buff4 extends SingleBuff
	{
		public function Buff4()
		{
			initTest();
		}
		
		public function initTest():void
		{
			buffType="防止伤害";
			name="防止伤害";
			stackCountMax=ConstantUtil.LOGIC_INFINITY;
			stackAble=true;
			compresenceAble=false;
		}
	}
}