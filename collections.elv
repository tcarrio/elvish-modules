fn dedup [list]{
    var values_map = [&]
    var dedup_list = []
    for value $list {
        if (not (has-key $values_map $value)) {
            dedup_list = [$@dedup_list $value]
        }
        values_map[$value] = 0
    }
    put $dedup_list
}