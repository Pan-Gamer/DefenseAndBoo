package com.skill
{
	public class SkillBase
	{
		public var name:String="";
		public var typeList:Array=[];//一堆没太大意义的tag
		public var effectList:Array=[];
		public var m_cost:int=0;
		public var coolDown:int=-1;//冷却时间
		public var coolDownMax:int=-1;
		public var coolDownCharge:int=-1;//充能.如果设置了ChargeMax,则charge至少为1才能使用;如果未设置,则只需判断coolDown==0.
		public var coolDownChargeMax:int=-1;
		
		public function set cost(i:int):void
		{
			m_cost=i;
		}
		
		public function get cost():int
		{
			return m_cost;
		}
		
		public function getActionSkill(...args):SkillBase
		{
			return this;
		}
		
		public function get hasCoolDown():Boolean
		{
			if(coolDownChargeMax>0)
			{
				return (coolDownCharge>=1);
			}
			else if(coolDownMax>0)
			{
				return (coolDown==0);
			}
			return true;
		}
		
		public function setCoolDown(type:String="fade",i:int=-1):void
		{
			if(coolDownMax==-1)
			{
				//error
				return;
			}
			switch(type)
			{
				case "fade"://走回合
					if(coolDown>0)
					{
						coolDown+=i;
						if(coolDownChargeMax>0 && coolDownChargeMax>coolDownCharge && coolDown<=0)
						{
							coolDownCharge++;
							if(coolDownChargeMax>coolDownCharge)
							{
								coolDown=coolDownMax;
							}
						}
					}
					break;
				case "finish"://完全结束冷却
					coolDown=0;
					if(coolDownChargeMax>0)
					{
						coolDownChargeMax=-1;
					}
					break;
				case "charge"://加一层充能,冷却时间保留
					if(coolDownChargeMax>0)
					{
						coolDownCharge+=i;
						if(coolDownCharge>=coolDownChargeMax)
						{
							//如果充满了,即没有下一层可供冷却,冷却时间废弃.
							coolDownCharge=coolDownChargeMax;
							coolDown=0;
						}
					}
					break;
				case "start"://进入冷却
					if(coolDownChargeMax>0)
					{
						if(coolDownCharge>=1)
						{
							coolDownCharge--;
							if(coolDown==0)
							{
								coolDown=coolDownMax;
							}
						}
						else
						{
							//error
							trace("error");
						}
					}
					else
					{
						coolDown=coolDownMax;
					}
					break;
			}
		}
	}
}