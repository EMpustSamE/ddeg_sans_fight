function Battle_AddMenuDialogCandidate()
{
    if Battle_IsMenuDialogCandidateEnabled()
    {
        ds_list_add(battle._menu_dialog_candidates, argument[0])
        return 1;
    }
    else
        return 0;
}

