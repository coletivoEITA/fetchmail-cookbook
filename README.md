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
    <td><tt>node['fetchmail']['server']</tt></td>
    <td>Support 'apache' and 'nginx'</td>
    <td><tt>nginx</tt></td>
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

