fetchmail Cookbook
========================
Install fetchmail using the system package and configure

Requirements
------------
Plataforms:
 - Debian
 - Ubuntu

Attributes
----------
#### fetchmail::default
<table>
  <tr>
    <th>Attribute</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['timeout']</tt></td>
    <td>Interval to check for email</td>
    <td><tt>20</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['invisible']</tt></td>
    <td>Toggle invisible option</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['no_bouncemail']</tt></td>
    <td>Toggle no bouncemail option</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['syslog']</tt></td>
    <td>Use syslog</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['logfile']</tt></td>
    <td>Change log file location</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches']</tt></td>
    <td>A list of emails to fetch, see below options</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['server']</tt></td>
    <td>Email server domain</td>
    <td><tt>mail.domain.com</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['protocol']</tt></td>
    <td>Which protocol to use</td>
    <td><tt>pop3</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['username']</tt></td>
    <td>Username to login</td>
    <td><tt>me@domain.com</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['password']</tt></td>
    <td>Password to login</td>
    <td><tt>a1b2c3</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['mda']</tt></td>
    <td>Command to execute in MDA format</td>
    <td><tt>echo</tt></td>
  </tr>
  <tr>
    <td><tt>node['fetchmail']['fetches'][]['no_keep']</tt></td>
    <td>Don't keep emails on the server</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### fetchmail::default
Just include `fetchmail` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[fetchmail]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

After 3 consistent patches you become a commiter :)
