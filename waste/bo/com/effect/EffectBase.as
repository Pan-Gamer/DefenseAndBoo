package com.effect
{
	import com.gameObject.*;
	
	public class EffectBase
	{
		private var effectType:String="EffectBase";
		public var target:int=0;
		public var isAttack:Boolean=false;//source先结算,attack后结算.
		public var isMagic:Boolean=false;
		public var isPhysics:Boolean=false;
		
		public function get type():String
		{
			return effectType;
		}
		
		public function EffectBase()
		{
			
		}
		
		public function deal(target:PlayerBase,...args):void
		{
			
		}
	}
}