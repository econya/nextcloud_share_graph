# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

module NextcloudShareGraph
  module LDAPGroupMembers
    def self.all
      DB.client.query('SELECT * FROM oc_ldap_group_members')
    end

    def self.count
      DB.client.query('SELECT count(*) FROM oc_group_members')
    end
  end
end

# describe oc_ldap_group_members;
# +---------------+--------------+------+-----+---------+-------+
# | Field         | Type         | Null | Key | Default | Extra |
# +---------------+--------------+------+-----+---------+-------+
# | owncloudname  | varchar(255) | NO   | PRI |         |       |
# | owncloudusers | longtext     | NO   |     | NULL    |       |
# +---------------+--------------+------+-----+---------+-------+

