package com.shangmao.map3.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;




 

public class RequestUtil {
	
//	public static void utilRequestMain(HttpServletRequest request,IAdminManageService adminService, Map<String, Object> map,int page, int size) {
//		List<Map<String,Object>> list = adminService.selectMp3All(map, page, size);
//		PageInfo<Map<String,Object>> pageInfo = new PageInfo<Map<String,Object>>(list);
//		System.out.println(pageInfo);
//		request.setAttribute("list", list);
//		request.setAttribute("total", pageInfo.getTotal());
//		request.setAttribute("map", map);
//		request.setAttribute("page", page);
//		request.setAttribute("size", size);
//	}
	
	
	public static Map<String, Object> getQueryMap(HttpServletRequest request) {
		Map<String, Object> bm = new HashMap<String, Object>();
		Map<String, String[]> tmp = request.getParameterMap();
		
		if (tmp != null) {
			for (String key : tmp.keySet()) {
				Object[] values = tmp.get(key);
				Object o = values.length == 1 ? values[0].toString().trim()
						: values;
				bm.put(key, isType(o));
			}
		}
		return bm;
	}

	public static Object isType(Object o) {
		Object object = o;
		try {
			object = Integer.parseInt(o.toString());
		} catch (Exception e) {
			try {
				object = Double.parseDouble(o.toString());
			} catch (Exception e1) {
				object = o.toString();
			}

		}
		return object;
	}
	
	/*验证码的 请求方法  打开页面 刷新出验证码内容 */
	public static  void  GeetestOnload(HttpServletRequest request,HttpServletResponse  response){
		try {
			/*极验验证的  使用请求密钥*/
			GeetestLib gtsdk=new GeetestLib("6cb5f8c10ac107363f7d8f8da5d90a72", "0f41fdf48d2fefbf17c1b0af79247b8c", false);
			String resStr="{}";
			String userid="test";
			HashMap<String,String> param=new HashMap<String, String>();
			/*请求传递参数*/
			param.put("user_id", "99909090");
			param.put("client_type", "web");
			 param.put("ip_address","127.0.0.1");
			int gtServerStatus=gtsdk.preProcess(param);
			request.getSession().setAttribute(gtsdk.gtServerStatusSessionKey , gtServerStatus);
			request.getSession().setAttribute("userid", userid); 
			resStr=gtsdk.getResponseStr();
			/*返回并页面输出 验证码*/
			PrintWriter out;
				out = response.getWriter();
				out.println(resStr);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	/*使用验证码  的判断输入值  是否符合    业务处理内容*/
	public  static  void   GeetestBy(HttpServletRequest request,HttpServletResponse  response){
		try {
			GeetestLib gtSdk = new GeetestLib("6cb5f8c10ac107363f7d8f8da5d90a72", "0f41fdf48d2fefbf17c1b0af79247b8c",false);
				
			String challenge = request.getParameter(GeetestLib.fn_geetest_challenge);
			String validate = request.getParameter(GeetestLib.fn_geetest_validate);
			String seccode = request.getParameter(GeetestLib.fn_geetest_seccode);
			
			//从session中获取gt-server状态״̬
			int gt_server_status_code = (Integer) request.getSession().getAttribute(gtSdk.gtServerStatusSessionKey);
			//从session中获取userid
			String userid = (String)request.getSession().getAttribute("userid");
			
			//自定义参数,可选择添加
			HashMap<String, String> param = new HashMap<String, String>(); 
			param.put("user_id", userid); //网站用户id
			param.put("client_type", "web"); //web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
			param.put("ip_address", "127.0.0.1"); //传输用户请求验证时所携带的IP
			
			int gtResult = 0;
			if (gt_server_status_code == 1) {
				//gt-server正常，向gt-server进行二次验证֤
				gtResult = gtSdk.enhencedValidateRequest(challenge, validate, seccode, param);
				System.out.println(gtResult);
			} else {
				// gt-server非正常情况下，进行failback模式验证֤
			 
				gtResult = gtSdk.failbackValidateRequest(challenge, validate, seccode);
			 
			}

			if (gtResult == 1) {
				// 验证成功
				PrintWriter out = response.getWriter();
				JSONObject data = new JSONObject();
				try {
					data.put("status", "success");
					data.put("version", gtSdk.getVersionInfo());
				} catch (JSONException e) {
					e.printStackTrace();
				}
				out.println(data.toString());
			}
			else {
				// 验证失败
				JSONObject data = new JSONObject();
				try {
					data.put("status", "fail");
					data.put("version", gtSdk.getVersionInfo());
				} catch (JSONException e) {
					e.printStackTrace();
				}
				PrintWriter out = response.getWriter();
				out.println(data.toString());
			}
			 
			} catch (IOException e) {
				// TODO Auto-generated catch block
				System.out.println("IO���쳣");
				e.printStackTrace();
			}
	}
}
