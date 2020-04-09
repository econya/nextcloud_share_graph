# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module Groups
    def self.all
      DB.client.query('SELECT * FROM oc_groups')
    end

    def self.count
      DB.client.query('SELECT count(*) FROM oc_groups')
    end
  end
end

# describe oc_groups;
# +-------------+--------------+------+-----+---------+-------+
# | Field       | Type         | Null | Key | Default | Extra |
# +-------------+--------------+------+-----+---------+-------+
# | gid         | varchar(64)  | NO   | PRI |         |       |
# | displayname | varchar(255) | NO   |     |         |       |
# +-------------+--------------+------+-----+---------+-------+

