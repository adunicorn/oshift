print """
<html>
   <head>
     <meta charset="UTF-8">
     <style>
          .left		{ background-color:#dff; }
          .right   	{ background-color:#fdf; }
          td { border: 1px #777;}
     </style>
   </head>
   <body>
      <table>
        <tr>
          <td width="50%"><h2>Brent</h2></td>
          <td width="50%"><h2>Albert</h2></td>
        <tr>
"""

with open('dialog-it.md') as f:
   for line in f:
       parts = line.split("#")
       if parts[0] == "0":
          print """
  <tr>
    <td class="left" colspan="2">
      ===============
    </td>
  </tr>
"""
       if parts[0] == "1":
           print """
  <tr>
    <td class="left">
      %s
    </td>
    <td>
    </td>
  </tr>
""" % parts[1]
       else:
           print """
  <tr>
    <td>
    </td>
    <td  class="right">
       %s
    </td>
  </tr>
""" % parts[1]



print """
</table>
</body>
</html>
"""
