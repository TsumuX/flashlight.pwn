new TogSenter[MAX_PLAYERS];

CMD:senter(playerid)
{
	if(TogSenter[playerid] ==0)
	{
	if(IsPlayerAttachedObjectSlotUsed(playerid,1)) RemovePlayerAttachedObject(playerid,1);
	if(IsPlayerAttachedObjectSlotUsed(playerid,2)) RemovePlayerAttachedObject(playerid,2);
	SetPlayerAttachedObject(playerid, 1,18656, 5, 0.1, 0.038, -0.1, -90, 180, 0, 0.03, 0.03, 0.03);
	SetPlayerAttachedObject(playerid, 2,18641, 5, 0.1, 0.02, -0.05, 0, 0, 0, 1, 1, 1);
        TogSenter[playerid] =1;
	return 1;
	}
	else
	RemovePlayerAttachedObject(playerid,1);
	RemovePlayerAttachedObject(playerid,2);
        TogSenter[playerid] =0;
}
