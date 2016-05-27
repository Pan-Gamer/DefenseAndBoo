package com.effect
{
	import com.gameObject.*;
	
	public class DamageEffect extends EffectBase
	{
		private var effectType:String="DamageEffect";
		public var point:int=0;
		
		public function DamageEffect()
		{
			
		}
		
		public override function deal(target:PlayerBase,...args):void
		{
			var attackSuccess:Boolean=true;
			if(isMagic)
			{
				if(target.containBuff("防"))
				{
					attackSuccess=false;
				}
			}
			if(isPhysics)
			{
				if(target.containBuff("闪") || target.containBuff("防"))
				{
					//被闪避
					attackSuccess=false;
				}
			}
			if(attackSuccess)
			{
				target.hp-=point;
			}
		}
	}
}