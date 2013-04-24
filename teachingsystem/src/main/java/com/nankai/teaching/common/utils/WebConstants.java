package com.nankai.teaching.common.utils;

/**
 * Web 常量定义
 * @author zhangzijing
 */
public class WebConstants {
    
    /** web context path **/
    public static final String PATH = PropertyUtil.getProperty("admin.path");

    
    /** controller返回失败状态码 **/
    public static final int RESPONSE_STATUS_FAIL = 1;  
    /** controller返回成功状态码 **/
    public static final int RESPONSE_STATUS_SUCC = 0;
    
    /** 默认分页大小 **/
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final String DEFAULT_PAGE_SIZE_STR = "10";
    public static final String MEDIUM_PAGE_SIZE_STR = "100";
    public static final String LARGE_PAGE_SIZE_STR = "500";

    /** 页面js验证文件的controller **/
    public static final String JS_VALIDATOR_CONTROLLER = "JS_VALIDATOR_CONTROLLER";
    /** 页面js验证文件的action **/
    public static final String JS_VALIDATOR_ACTION = "JS_VALIDATOR_ACTION";
    
    /** Controller后缀 **/
    public static final String CONTROLLER_SUFFIX = "Controller";
    /** validator formId key **/
    public static final String VALI_FORM_ID_KEY = "valiFormId";
    
    public static final String FILE_REPORT_PATH = "/home/q/www/qss_filereport/"; //文件存放地址
    public static final String FIlE_REPORT_CSV_SEPARATOR=","; //csv文件分割符
    public static final String FILE_REPORT_RECEIV="receivables"; //收款文件
    public static final String FILE_REPORT_CUSTOMER="customer";//客户文件
    public static final String FILE_REPORT_INVOICE="invoice";//发票文件
}
