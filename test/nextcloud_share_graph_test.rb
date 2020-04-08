# SPDX-FileCopyrightText: 2020 Felix Wolfsteller
#
# SPDX-License-Identifier: AGPL-3.0-or-later

require "test_helper"

class NextcloudShareGraphTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NextcloudShareGraph::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
