package com.effect
{
	import com.gameObject.*;
	import com.system.*;
	
	public class EffectBase
	{
		public var effectType:String="EffectBase";
		public var target:int=0;
		public var isAttack:Boolean=false;//source先结算,attack后结算.
		public var isMagic:Boolean=false;
		public var isPhysics:Boolean=false;
		public var attackSpeed:int=0;
		
		public function get type():String
		{
			return effectType;
		}
		
		public function EffectBase()
		{
			
		}
		
		public function deal(target:PlayerBase,action:ActionBase,...args):void
		{
			
		}
	}
}