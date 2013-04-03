# foreman_resources

Manage resources for a Puppet class. For example vhosts for a Puppet class or
users, databases and grants for a MySQL class.

Parameterized classes can be managed by Foreman. For basic types an input
validation can also be added, via a regexp. This plugin will add validation
for resources of a Puppet class.

Resources for all the Puppet classes are described in a JSON-schema. Parameters
are validated against this schema before they are commited to the Foreman
database.

# See also:

JSON schema: <http://json-schema.org>

# Installation:


# Usage


# Copyright

[Update copyright accordingly.  GPLv3 is used as Foreman itself is.]

Copyright (c) 2012-2013 Red Hat Inc.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
