hint "Click on the map where you'd like to HALO jump.";
openMap true;
onMapSingleClick {
    onMapSingleClick {};
    player setpos _pos;
    {
        [_x, 11500, false, true, true] call COB_fnc_HALO;
      } foreach units group player;
    hint '';
    openMap false;
    true
};
