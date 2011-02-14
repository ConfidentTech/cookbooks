#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


%w{
  libapache2-mod-wsgi python2.6 scons babel
}.each do |pkg|
  action :install
end

# processing
%w{ 
  dev imaging matplotlib matplotlib-data matplotlib-doc mysqldb 
  numpy numpy-ext paramiko scipy setuptools sqlite mako
  openid dateutil twill psycopg2 cherrypy3 django jinja2
  virtualenv werkzeug boto pip coverage
  lxml paver nose mox lxml-dbg
}.each do |pkg|
  package "python-#{pkg}" do
    action :install
  end
end
