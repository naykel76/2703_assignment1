<?php

namespace App;

use Illuminate\Support\Facades\DB;

class MyModels
{


    /**
     * Delete record/'s from $table
     *
     * @param $table name of table to delete record
     * @param $attr arrribute for where clause. id or fk
     * @param $id or $fk of record
     */
    public static function deleteRecord($table, $attr = 'id', $id)
    {
        $sql = "DELETE FROM $table WHERE $attr = ?";
        return DB::delete($sql, [$id]);
    }

    /**
     * Get unique records
     *
     * @param $fields comma seperated field names to return
     * @param $table
     * @param $groupBy (unique record)
     * @return array of unique records
     *
     */
    public static function getUniqueRecords($fields, $table, $groupBy)
    {
        $sql = "SELECT $fields FROM $table GROUP BY $groupBy";
        return DB::select($sql);
    }

    // /**
    //  * Helper function to check there is a result is returned or throw error
    //  * @param $sql the current query
    //  * @param $results query results to check
    //  */
    // public static function allIsWell($sql, $results)
    // {
    //     // if record/'s found then all is well, else there is a problem
    //     if (!empty($results)) {
    //         return $results;
    //     } else {
    //         die("Something has gone wrong, invalid query or result: $sql");
    //     }
    // }
}