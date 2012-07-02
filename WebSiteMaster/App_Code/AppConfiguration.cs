using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for AppConfiguration
/// </summary>
public class AppConfiguration
{	

    public static string FromAddress
    {
        get 
        {
            string result = WebConfigurationManager.AppSettings.Get("FromAddress");
            if (!string.IsNullOrEmpty(result))
            {
                return result;
            }
            throw new Exception("AppSetting FromAddres not found in web.config file.");
        }
    }

    public static string ToAddress
    {
        get
        {
            string result = WebConfigurationManager.AppSettings.Get("ToAddress");
            if(!string.IsNullOrEmpty(result))
            {
                return result;
            }
            throw new Exception("AppSetting ToAddress not found int web.confug file.");
        }
    }

    public static string FromName
    {
        get 
        {
            string result = WebConfigurationManager.AppSettings.Get("FromName");
            if (!string.IsNullOrEmpty(result))
            {
                return result;
            }
            throw new Exception("AppSetting FromName not found in web.config file.");
        }
    }

    public static string ToName
    {
        get
        {
            string result = WebConfigurationManager.AppSettings.Get("ToName");
            if (!string.IsNullOrEmpty(result))
            {
                return result;
            }
            throw new Exception("AppSetting ToName not found in web.config file.");
        }
    }

    public static bool SendMailOnError
    {
        get
        {
            string result = WebConfigurationManager.AppSettings.Get("SendMailOnError");
            if(!string.IsNullOrEmpty(result))
            {
                return Convert.ToBoolean(result);
            }
            throw new Exception("AppSetting SendMailOnError not found in web.config file.");
        }
    }

}