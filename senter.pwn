#include <a_samp>
#include <zcmd>

new SenterOn[MAX_PLAYERS];

CMD:senter(playerid)
{
	if(SenterOn[playerid] ==0)
	{
	if(IsPlayerAttachedObjectSlotUsed(playerid,1)) RemovePlayerAttachedObject(playerid,1);
	if(IsPlayerAttachedObjectSlotUsed(playerid,2)) RemovePlayerAttachedObject(playerid,2);
	SetPlayerAttachedObject(playerid, 1,18656, 5, 0.1, 0.038, -0.1, -90, 180, 0, 0.03, 0.03, 0.03);
	SetPlayerAttachedObject(playerid, 2,18641, 5, 0.1, 0.02, -0.05, 0, 0, 0, 1, 1, 1);
	format(String, 188, "%s Mengeluarkan Senter Dan menyalakannya",Name(playerid));
	ProxDetector(20.0, playerid, String, 0xDD90FFFF,0xDD90FFAA,0xDD90FFAA,0xDD90FFAA,0xDD90FFAA);
	SetPlayerChatBubble(playerid,String,0xDD90FFFF,20.0,10000);
	SenterOn[playerid] +=1;
	return 1;
	}
	else
	RemovePlayerAttachedObject(playerid,1);
	RemovePlayerAttachedObject(playerid,2);
	format(String, 188, "%s Mematikan senter dan menyimpannya",Name(playerid));
	ProxDetector(20.0, playerid, String, 0xDD90FFFF,0xDD90FFAA,0xDD90FFAA,0xDD90FFAA,0xDD90FFAA);
	SetPlayerChatBubble(playerid,String,0xDD90FFFF,20.0,10000);
	SenterOn[playerid] -=1;
	return 1;
}
