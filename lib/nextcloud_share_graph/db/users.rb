# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module Users
    def self.all
      DB.client.query('SELECT * FROM oc_accounts')
    end

    def self.count
      DB.client.query('SELECT count(*) FROM oc_accounts')
    end
  end
end

# describe oc_accounts;
# +-------+-------------+------+-----+---------+-------+
# | Field | Type        | Null | Key | Default | Extra |
# +-------+-------------+------+-----+---------+-------+
# | uid   | varchar(64) | NO   | PRI |         |       |
# | data  | longtext    | NO   |     | NULL    |       |
# +-------+-------------+------+-----+---------+-------+

