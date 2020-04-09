# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module GroupFolders
    def self.all
      DB.client.query('SELECT * FROM oc_group_folders')
    end

    def self.count
      DB.client.query('SELECT count(*) FROM oc_group_folders')
    end
  end
end

# oc_group_folders;
# +-------------+---------------+------+-----+---------+----------------+
# | Field       | Type          | Null | Key | Default | Extra          |
# +-------------+---------------+------+-----+---------+----------------+
# | folder_id   | bigint(20)    | NO   | PRI | NULL    | auto_increment |
# | mount_point | varchar(4000) | NO   |     | NULL    |                |
# | quota       | bigint(20)    | NO   |     | -3      |                |
# | acl         | int(11)       | NO   |     | 0       |                |
# +-------------+---------------+------+-----+---------+----------------+
