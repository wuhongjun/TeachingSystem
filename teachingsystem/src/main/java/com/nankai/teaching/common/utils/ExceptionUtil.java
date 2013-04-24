/*
 * Copyright (c) 2011 Qunar.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.nankai.teaching.common.utils;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 异常处理相关的工具类。
 * 
 * <p>
 * 获取异常堆栈追踪的全部信息。<br>
 *
 * <strong>ExceptionUtil使用案例</strong><br>
 * <code><pre>
 * ...
 * try {
 *    ...
 * } catch (Exception e) {
 *     // 记录异常堆栈追踪信息
 *     log.error("error-message", ExceptionUtil.getStackTrace(e));
 * }
 * ...
 * </pre></code>
 * </p>
 */
public final class ExceptionUtil {

    /**
     * 日志类。
     */
    private static Log log = LogFactory.getLog(ExceptionUtil.class);

    /**
     * 针对ServletException堆栈追踪信息获取方式的不同，做单独处理。
     */
    private static final String SERVLET_EXCEPTION_NAME = 
        "javax.servlet.ServletException";

    /**
     * 发生ServletException异常时使用的方法名，以获取发生Servlet异常的原因。
     */
    private static final String GET_ROOT_CAUSE = "getRootCause";

    /**
     * 获取指定异常的堆栈追踪信息。
     *
     * <p>
     * 如果能够获取该异常的产生原因，递归获取异常的堆栈信息。
     * 针对ServletException时，需使用getRootCause()方法。
     * </p>
     *
     * @param throwable 异常
     * @return 异常堆栈追踪信息
     */
    public static String getStackTrace(Throwable throwable) {
        StringBuilder sb = new StringBuilder();
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        while (throwable != null) {
            baos.reset();
            throwable.printStackTrace(new PrintStream(baos));
            sb.append(baos.toString());

            // 获取throwable的Class对象
            Class throwableClass = throwable.getClass();

            // 异常为ServletException时使用getRootCause方法
            if (SERVLET_EXCEPTION_NAME.equals(throwableClass.getName())) {
                try {
                    // throwable = ((ServletException) throwable).getRootCause()
                    // 执行Class的指定方法
                    Method method = throwableClass.getMethod(GET_ROOT_CAUSE);
                    throwable = (Throwable) method.invoke(throwable);
                } catch (NoSuchMethodException e) {
                    // 未找到对应的方法
                    log.error(e.getMessage());
                    throwable = null;
                } catch (IllegalAccessException e) {
                    // 无法访问方法
                    log.error(e.getMessage());
                    throwable = null;
                } catch (InvocationTargetException e) {
                    // 方法执行时发生异常
                    log.error(e.getMessage());
                    throwable = null;
                }
            } else {
                throwable = throwable.getCause();  
            }
        }
        return sb.toString();
    }
}
