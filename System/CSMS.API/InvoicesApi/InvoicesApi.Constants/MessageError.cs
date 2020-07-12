﻿namespace InvoicesApi.Constants
{
    public class MessageError
    {
        public static readonly string InternalServerError = "Internal Server Error";
        public static readonly string NotFound = "Data not found";
        public static readonly string PermissionDenied = "Permission denied";
        public static readonly string NoContent = "No Content";
        public static readonly string SomeDataEmptyOrInvalid = "Some data is empty or invalid";
        public static readonly string NotAcceptable = "Data not acceptable";
        public static readonly string DataConflict = "Data is conflict";
        public static readonly string Forbidden = "Data is forbidden";
        public static readonly string DataIsExists = "{0} has already exists.";
        public static readonly string DataIsWrong = "{0} is empty or not valid";
    }
}
