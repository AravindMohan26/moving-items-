using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CS : System.Web.UI.Page
{
    protected void Submit(object sender, EventArgs e)
    {
        string leftSelectedItems = Request.Form[lstLeft.UniqueID];
        lstLeft.Items.Clear();
        if (!string.IsNullOrEmpty(leftSelectedItems))
        {
            foreach (string item in leftSelectedItems.Split(','))
            {
                lstLeft.Items.Add(item);
            }
        }
        string rightSelectedItems = Request.Form[lstRight.UniqueID];
        lstRight.Items.Clear();
        if (!string.IsNullOrEmpty(rightSelectedItems))
        {
            foreach (string item in rightSelectedItems.Split(','))
            {
                lstRight.Items.Add(item);
            }
        }
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Left ListBox Items: " + leftSelectedItems + "\\nRight ListBox Items: " + rightSelectedItems + "');", true);
    }
}