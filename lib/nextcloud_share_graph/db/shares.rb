# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module GroupFolders
    def self.all
      DB.client.query('SELECT * FROM oc_shares')
    end

    def self.all_folders
      DB.client.query('SELECT * FROM oc_shares where item_type = \'folder\'')
    end

    def self.count
      DB.client.query('SELECT count(*) FROM oc_shares')
    end
  end
end

# describe oc_share;
# +------------------+--------------+------+-----+---------+----------------+
# | Field            | Type         | Null | Key | Default | Extra          |
# +------------------+--------------+------+-----+---------+----------------+
# | id               | bigint(20)   | NO   | PRI | NULL    | auto_increment |
# | share_type       | smallint(6)  | NO   |     | 0       |                |
# | share_with       | varchar(255) | YES  | MUL | NULL    |                |
# | password         | varchar(255) | YES  |     | NULL    |                |
# | uid_owner        | varchar(64)  | NO   | MUL |         |                |
# | uid_initiator    | varchar(64)  | YES  | MUL | NULL    |                |
# | parent           | bigint(20)   | YES  | MUL | NULL    |                |
# | item_type        | varchar(64)  | NO   | MUL |         |                |
# | item_source      | varchar(255) | YES  |     | NULL    |                |
# | item_target      | varchar(255) | YES  |     | NULL    |                |
# | file_source      | bigint(20)   | YES  | MUL | NULL    |                |
# | file_target      | varchar(512) | YES  |     | NULL    |                |
# | permissions      | smallint(6)  | NO   |     | 0       |                |
# | stime            | bigint(20)   | NO   |     | 0       |                |
# | accepted         | smallint(6)  | NO   |     | 0       |                |
# | expiration       | datetime     | YES  |     | NULL    |                |
# | token            | varchar(32)  | YES  | MUL | NULL    |                |
# | mail_send        | smallint(6)  | NO   |     | 0       |                |
# | share_name       | varchar(64)  | YES  |     | NULL    |                |
# | password_by_talk | tinyint(1)   | NO   |     | 0       |                |
# | note             | longtext     | YES  |     | NULL    |                |
# | hide_download    | smallint(6)  | NO   |     | 0       |                |
# | label            | varchar(255) | YES  |     | NULL    |                |
# +------------------+--------------+------+-----+---------+----------------+

