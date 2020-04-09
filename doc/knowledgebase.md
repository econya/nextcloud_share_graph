<!--
SPDX-FileCopyrightText: 2020 Felix Wolfsteller

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# Knowledgebase

## About Nextcloud

### A simple table dump (mariadb) on a default NC 18 with some plugins installed:

```
Tables_in_nextcloud
oc_accounts
oc_activity
oc_activity_mq
oc_addressbookchanges
oc_addressbooks
oc_announcements
oc_announcements_groups
oc_appconfig
oc_audioplayer_albums
oc_audioplayer_artists
oc_audioplayer_genre
oc_audioplayer_playlist_tracks
oc_audioplayer_playlists
oc_audioplayer_stats
oc_audioplayer_streams
oc_audioplayer_tracks
oc_authtoken
oc_bookmarks
oc_bookmarks_folders
oc_bookmarks_folders_bookmarks
oc_bookmarks_tags
oc_bruteforce_attempts
oc_calendar_invitations
oc_calendar_reminders
oc_calendar_resources
oc_calendar_resources_md
oc_calendar_rooms
oc_calendar_rooms_md
oc_calendarchanges
oc_calendarobjects
oc_calendarobjects_props
oc_calendars
oc_calendarsubscriptions
oc_cards
oc_cards_properties
oc_circles_circles
oc_circles_clouds
oc_circles_groups
oc_circles_links
oc_circles_members
oc_circles_shares
oc_circles_tokens
oc_collres_accesscache
oc_collres_collections
oc_collres_resources
oc_comments
oc_comments_read_markers
oc_credentials
oc_dav_cal_proxy
oc_dav_shares
oc_direct_edit
oc_directlink
oc_external_applicable
oc_external_config
oc_external_mounts
oc_external_options
oc_federated_reshares
oc_file_locks
oc_filecache
oc_filecache_extended
oc_files_trash
oc_flow_checks
oc_flow_operations
oc_flow_operations_scope
oc_gpxedit_options
oc_gpxedit_tile_servers
oc_group_admin
oc_group_folders
oc_group_folders_acl
oc_group_folders_groups
oc_group_folders_manage
oc_group_folders_trash
oc_group_user
oc_groups
oc_jobs
oc_ldap_group_mapping
oc_ldap_group_members
oc_ldap_user_mapping
oc_locks_w2g2
oc_login_flow_v2
oc_migrations
oc_mimetypes
oc_mindmaps
oc_mindmaps_acl
oc_mindmaps_nodes
oc_mounts
oc_music_albums
oc_music_ampache_sessions
oc_music_ampache_users
oc_music_artists
oc_music_cache
oc_music_playlists
oc_music_tracks
oc_notifications
oc_notifications_pushtokens
oc_oauth2_access_tokens
oc_oauth2_clients
oc_polls_comments
oc_polls_log
oc_polls_notif
oc_polls_options
oc_polls_polls
oc_polls_share
oc_polls_votes
oc_preferences
oc_privacy_admins
oc_properties
oc_retention
oc_richdocuments_assets
oc_richdocuments_direct
oc_richdocuments_member
oc_richdocuments_wopi
oc_schedulingobjects
oc_share
oc_share_external
oc_storages
oc_systemtag
oc_systemtag_group
oc_systemtag_object_mapping
oc_talk_commands
oc_talk_guests
oc_talk_participants
oc_talk_rooms
oc_talk_signaling
oc_text_documents
oc_text_sessions
oc_text_steps
oc_trusted_servers
oc_tsp_polls
oc_tsp_votes
oc_twofactor_backupcodes
oc_twofactor_providers
oc_usage_report
oc_user_transfer_owner
oc_users
oc_vcategory
oc_vcategory_to_object
oc_whats_new
```

### LDAP

We have `oc_users` and `oc_ldap_user_mapping`.
Similarly, `oc_groups` and `oc_ldap_group_mapping` with `oc_ldap_group_members`.
They seem to get condensed into `oc_accounts`.

## How are shares represented?

tbu

## Ruby and PHP

Some of the db stuff is serialized php, so need to unserialize it

## Other libraries and gems

### nextcloud gem

The [nextcloud gem](https://github.com/dachinat/nextcloud) talks to a NC via
its API and can get get user and groups stuff, but files and shares only for
authenticated users.

### dry-rom

Might be a good ORM to deal with "legacy" data, but unfortunately I lack the
time to look into it. Considered ActiveRecord, ended with writing the queries
manually. This will hurt later.

## Drawing graphs

### Graphviz

Of course there are other solutions, but come on.

Graphviz is awesome (although not very shiny) but struggles with development
power! Help them!

The big plus is: deployable everywhere, bindings to every language, stable,
quite linuxy.

There are negative aspects but ... come on, who can beat that.

