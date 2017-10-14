package cn.bdqn.datacockpit.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bdqn.datacockpit.entity.Analysistasks;
import cn.bdqn.datacockpit.entity.Companyinfo;
import cn.bdqn.datacockpit.entity.Datarelation;
import cn.bdqn.datacockpit.entity.Info;
import cn.bdqn.datacockpit.entity.Result;
import cn.bdqn.datacockpit.entity.Tablecolumninfo;
import cn.bdqn.datacockpit.entity.Tableinfo;
import cn.bdqn.datacockpit.entity.Userinfo;
import cn.bdqn.datacockpit.service.AnalysistasksService;
import cn.bdqn.datacockpit.service.CompanyinfoService;
import cn.bdqn.datacockpit.service.DatarelationService;
import cn.bdqn.datacockpit.service.InfoService;
import cn.bdqn.datacockpit.service.ResultService;
import cn.bdqn.datacockpit.service.TablecolumninfoService;
import cn.bdqn.datacockpit.service.TableinfoService;
import cn.bdqn.datacockpit.service.UserinfoService;
import cn.bdqn.datacockpit.utils.ChineseToPinYin;
import cn.bdqn.datacockpit.utils.JdbcUtil;


@Controller
public class AdminTilesController {
    @Autowired
    private TableinfoService ts;

    @Autowired
    private UserinfoService us;

    @Autowired
    private InfoService is;

    @Autowired
    private CompanyinfoService companyinfo;

    @Autowired
    private DatarelationService datarelationService;

    
    @Autowired
    private AnalysistasksService analysistasksService;
    
    @Autowired
    private ResultService resultService;
    
    @Autowired
    private TablecolumninfoService tcs;
    
    @RequestMapping("/admin_index")
    public String index(Model model) {
        return "admin_index.page";
    }

    
    @RequestMapping("/admin_tongzhi1")
    public String tongzhi1(Model model) {
        model.addAttribute("menus", "1");
        return "admin_tongzhi1.page";
    }

    
    @RequestMapping("/admin_tongzhi2")
    public String tongzhi2(Model model) {
        return "admin_tongzhi2.page";
    }

    @RequestMapping("/admin_tongzhi3")
    public String tongzhi3(Model model, HttpServletRequest req) {
        // 获取id
        Integer id = Integer.parseInt(req.getParameter("id"));
        Info info = is.selectByPrimaryKey(id);
        model.addAttribute("info", info);
        return "admin_tongzhi3.page";
    }

    @RequestMapping("/tongzhi_update")
    public String tongzhi_update(Info info) {
        // 获取实体类信息
        is.updateByPrimaryKeySelective(info);
        return "admin_tongzhi1.page";
    }

    
    @RequestMapping("/tongzhi_insert")
    public String tongzhi_insert(Info info) {
        // 获取实体类信息，将新增数据存入数据库
        is.insertSelective(info);
        // 获取本地时间与数据库时间格式一致
        java.util.Date date = new java.util.Date();
        java.sql.Date data1 = new java.sql.Date(date.getTime());
        info.setPublishDate(data1);
        // 获取最新一条记录ID
        Integer infoMax = is.selectMaxId();
        info.setId(infoMax);
        // 将时间存入最后一条记录中
        is.updateByPrimaryKey(info);
        return "admin_tongzhi1.page";
    }

    @RequestMapping("/tongzhi_delete")
    public String tongzhi_delete(HttpServletRequest req) {
        // 获取id
        Integer id = Integer.parseInt(req.getParameter("id"));
        is.deleteByPrimaryKey(id);
        return "admin_tongzhi1.page";
    }

    @RequestMapping("/admin_delete")
    public String admin_delete(HttpServletRequest req) {
        // 获取id
        Integer id = Integer.parseInt(req.getParameter("id"));
        us.deleteByPrimaryKey(id);
        return "admin_shuju4.page";
    }

    @RequestMapping("/adminus_delete")
    public String adminus_delete(HttpServletRequest req) {
        // 获取id
        Integer id = Integer.parseInt(req.getParameter("id"));
        companyinfo.deleteByPrimaryKey(id);
        return "admin_userDsh.page";
    }

    @RequestMapping("/aduser_update")
    public String aduser_update(Model model, HttpServletRequest req) {
        // 获取实体类信息
        Integer id = Integer.parseInt(req.getParameter("id"));
        Companyinfo comp = companyinfo.selectByPrimaryKey(id);
        model.addAttribute("comp", comp);
        return "aduser_update.page";
    }

    
    @RequestMapping("/adminuss_updatee")
    public String adminuss_updatee(HttpServletRequest req) {
        // 获取实体类信息
        Integer id = Integer.parseInt(req.getParameter("id"));
        Companyinfo comp = companyinfo.selectByPrimaryKey(id);
        comp.setApproval(1);
        companyinfo.updateByPrimaryKey(comp);
        return "admin_userDsh.page";
    }

    /***
     * 
     * @param req:通过id更新approval状态
     * @return
     */
    @RequestMapping("/adminuss_updatee0")
    public String adminuss_updatee0(HttpServletRequest req) {
        // 获取实体类信息
        Integer id = Integer.parseInt(req.getParameter("id"));
        Companyinfo comp = companyinfo.selectByPrimaryKey(id);
        comp.setApproval(0);
        companyinfo.updateByPrimaryKey(comp);
        return "admin_userDsh.page";
    }

    /***
     * 
     * @param req:通过id更新state状态:1
     * @return
     */
    @RequestMapping("/aduser_update1")
    public String aduser_update1(HttpServletRequest req) {
        // 获取实体类信息
        Integer id = Integer.parseInt(req.getParameter("id"));
        Companyinfo comp = companyinfo.selectByPrimaryKey(id);
        comp.setState(1);
        companyinfo.updateByPrimaryKey(comp);
        return "admin_userMan.page";
    }

    /***
     * 
     * @param req:通过id更新state状态:0
     * @return
     */
    @RequestMapping("/aduser_update0")
    public String aduser_update0(HttpServletRequest req) {
        // 获取实体类信息
        Integer id = Integer.parseInt(req.getParameter("id"));
        Companyinfo comp = companyinfo.selectByPrimaryKey(id);
        comp.setState(0);
        companyinfo.updateByPrimaryKey(comp);
        return "admin_userMan.page";
    }

    @RequestMapping("/aduser_update2")
    public String aduser_insert(Companyinfo comps) {
        // 获取实体类信息
        int flag = companyinfo.updateByPrimaryKey(comps);

        System.out.println(flag);
        return "admin_userMan.page";
    }

    @RequestMapping("/admin_shuju2")
    public String shuju2(Model model, HttpServletRequest req) {
        return "admin_shuju2.page";
    }

    @RequestMapping("/admin_shuju4")
    public String shuju4(Model model) {
        model.addAttribute("menus", "2");
        return "admin_shuju4.page";
    }

    @RequestMapping("insertAdminReg")
    public String insertAdminReg(Userinfo record) {
        int flag = us.insertSelective(record);
        // 转发
        return "admin_shuju4.page";
    }

    @RequestMapping("/selectAllCompanyinfo")
    public String selectAllCompanyinfo(Model model, HttpServletRequest req) {
        List<Companyinfo> lists = companyinfo.selectAllCompanies();
        model.addAttribute("lists", lists);
        List<Info> infoList = is.selectAllInfo();
        if (infoList != null) {
            for (Info info : infoList) {
                Date date = info.getPublishDate();
                System.out.println(date);
            }
        }
        HttpSession session = req.getSession();
        session.setAttribute("tongzhi", infoList);
        // 转发
        return "admin_index.page";
    }

    @RequestMapping("/admin_userDsh")
    public String dshCompanyinfo(Model model) {

        List<Companyinfo> lists = companyinfo.selectAllCompanies();
        model.addAttribute("menus", "5");
        model.addAttribute("lists", lists);
        // 转发
        return "admin_userDsh.page";
    }

    @RequestMapping("/admin_userMan")
    public String userMan(Model model) {

        List<Companyinfo> lists = companyinfo.selectAllCompanies();
        model.addAttribute("menus", "4");
        model.addAttribute("lists", lists);

        // 转发
        return "admin_userMan.page";
    }

    
    @RequestMapping("/admin_uppassword")
    public String admin_uppassword(Model model) {
        model.addAttribute("checks", "geren2");
        return "admin_pass.page";
    }
    
    
    @RequestMapping("/admin_selects")
    public String selects(Model model) {
        List<Companyinfo> lists = companyinfo.selectAllCompanies();
        System.out.println(lists);
        model.addAttribute("menus", "4");
        model.addAttribute("lists", lists);
        // 转发
        return "admin_userMan.page";
    }
    
    /**
     * 公告详情
     * 
     * @param req
     * @return
     */
    @RequestMapping("/admin_gongGao")
    public String gongGao1(Integer id, Model model) {
        Info infos = is.selectByPrimaryKey(id);
        model.addAttribute("ggg", infos);
        return "admin_gongGao.page";
    }


    @RequestMapping("/admin_adds")
    public String adds(Model model) {

        List<Companyinfo> lists = companyinfo.selectAllCompanies();
        System.out.println(lists);
        model.addAttribute("menus", "4");
        model.addAttribute("lists", lists);

        // 转发
        return null;
    }
    
    
  //=========================================================================  
  //=========================================================================  
  //=========================================================================  
    /**
     * 
     * @param model  平台——企业数据管理
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin_cominfo")
    public String cominfo() {       
        return "admin_cominfo.page";
    }
    
    /**
     * 
     * @Description (平台— 跳转到 数据表管理页面)
     * @param model
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin_shuju1_1")
    public String shuju1_1(HttpServletRequest req) {
        //获取企业的id
        String id = req.getParameter("id");
        HttpSession session = req.getSession();
        if(id != null){
            //存入session，方便 数据分析管理和分析任务管理页面使用           
            session.setAttribute("No1", id);
            //跳到数据表管理页面
            return "admin_shuju1.page";
        }else{
            String ids = (String) session.getAttribute("No1");
            if(ids != null){
                //跳到数据表管理页面
                return "admin_shuju1.page";
            }else{
                //跳到企业名单页面
                return "admin_cominfo.page";
            }
        }
        
    }
    
    /**
     * 
     * @Description (平台——新建数据表)
     * @param id
     * @param req
     * @return
     */
    @ResponseBody
    @RequestMapping("/admin_create")
    public Map<String, String> creats(@RequestParam("values") String id, HttpServletRequest req) {
        String No1Id = (String) req.getSession().getAttribute("No1");
        String[] attr = id.split(",");
        ChineseToPinYin ctp = new ChineseToPinYin();
        Map<String, Object> map = new HashMap<String, Object>();
        Map<String, Object> mapChina = new HashMap<String, Object>();
        String tbName = null;
        for (int i = 0; i < attr.length; i++) {
            if (i == 0) {
                //存图形id
                map.put("shows", attr[0]);
            } else if (i == 1) {
                //HttpSession session = req.getSession();
                //拼接新建表名为用户id+表明（防止重名）
                tbName =No1Id+ ctp.getPingYin(attr[1]);
            } else if (2 * i - 1 <= attr.length) {
                //存 字段名 和 字段类型
                map.put(ctp.getPingYin(attr[2 * i - 2]), attr[2 * i - 1]);
                mapChina.put(ctp.getPingYin(attr[2 * i - 2]), attr[2 * i - 2]);
            }
        }

        JdbcUtil creats = new JdbcUtil();
        ApplicationContext context = creats.getContext();
        context = new ClassPathXmlApplicationContext("spring-common.xml");
        JdbcTemplate jt = (JdbcTemplate) context.getBean("jdbcTemplate");
        creats.createTable(jt, tbName, map,mapChina);

        Date dt = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = sdf.format(dt);
        Tableinfo record = new Tableinfo();
        record.setName(attr[1]);
        record.setUpdatetime(date);
        record.setShowtype(attr[0]);
        record.setPhysicaltablename(tbName);
        HttpSession session = req.getSession();
        String ids = (String) session.getAttribute("No1");
        Integer cid = Integer.parseInt(ids);
        record.setCid(cid);
        ts.insert(record);

        Map<String, String> maps = new HashMap<String, String>();
        maps.put("flag", "1");
        return maps;
    }

    /**
     * 
     * @Description (平台——查询数据表的数据详情)
     * @param model
     * @param req
     * @return
     */
    @RequestMapping("/admin_shujus")
       public String shuju3(Model model, HttpServletRequest req) {
           
           String infoId = req.getParameter("infoId");
           Tableinfo tableinfo = ts.selectByPrimaryKey(Integer.parseInt(infoId));
           String tableName = tableinfo.getPhysicaltablename();
           List<Tablecolumninfo> TablecolumninfoList = tcs.selectView(tableName);
           TablecolumninfoList.get(0).setColumnname("序号");
           HttpSession session = req.getSession();
           session.setAttribute("TablecolumninfoList", TablecolumninfoList);
           
           model.addAttribute("menus", "3");
           String names = req.getParameter("id");
           
           ChineseToPinYin ctp = new ChineseToPinYin();
           String name = ctp.getPingYin(names);
           model.addAttribute("name2", names);
           model.addAttribute("name1", name);
           
           JdbcUtil jdbc1 = new JdbcUtil();
           ApplicationContext context = jdbc1.getContext();
           context = new ClassPathXmlApplicationContext("spring-common.xml");
           JdbcTemplate jt = (JdbcTemplate) context.getBean("jdbcTemplate");

           return "admin_shujus.page";
       }
    
//=======================================================================    
    
    /**
     * 
     * @Description (平台—跳转到分析任务管理页面)
     * @param model
     * @param req
     * @return
     */
    @RequestMapping("/admin_shuju1_3")
    public String admin_shuju1_3(HttpServletRequest req) {
        HttpSession session = req.getSession();
        //获取企业的id
        String ids = (String) session.getAttribute("No1");
        if(ids != null){
            //跳到分析任务管理页面
            return "admin_shuju1_3.page";
        }else{
            //跳到企业名单页面
            return "admin_cominfo.page";
        }
    }
    
    
    
    /**
     * 
     * @param model 平台—跳转到 分析任务结果页面
     * @param req
     * @return 得到aid，获取result
     */
    @RequestMapping("/admin_shuju3")
    public String admin_shuju3(Model model, HttpServletRequest req) {
        String aid = req.getParameter("id");
        if(aid != null){
            List<Result> result = resultService.getResult(Integer.parseInt(aid));
            model.addAttribute("result", result);
            
            Analysistasks analysistasks = new Analysistasks();
            analysistasks.setId(Integer.parseInt(aid));
            List<Analysistasks> lists = analysistasksService.getAnalysistasks(analysistasks);
            model.addAttribute("message2", lists.get(0));
            
            return "admin_shuju3.page";
        }else{
            return "admin_shuju1_3.shtml";
        }
    }
    
//==============================================================
    

    /**
     * 
     * @param model    平台——企业数据关系管理
     * @param req
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin_shuju1_2")
    public String shuju1_2(Model model, HttpServletRequest req) throws Exception {
        
        HttpSession session = req.getSession();
        String id=(String) session.getAttribute("No1");
        Integer cid = Integer.parseInt(id);
        List<Datarelation> datarelationList = datarelationService.selectByCid(cid);
        model.addAttribute(datarelationList);
        return "admin_shuju1_2.page";
    }
    
    
  
    /**
     * 
     * @param datarelation  平台——新增数据表关联
     * @param req
     * @return
     */
    @ResponseBody
    @RequestMapping("/insert_guanlian")
    public Integer insertGL(Datarelation datarelation,HttpServletRequest req) {
        HttpSession session = req.getSession();
        String ids = (String) session.getAttribute("No1");
        Integer cid = Integer.parseInt(ids);
        datarelation.setCid(cid);
        datarelation.setState(1);
        Integer flag=-2;
        Tableinfo tableinfo1 = ts.selectByPrimaryKey(datarelation.getTid1());
        String tableName1 = tableinfo1.getPhysicaltablename();
        List<Tablecolumninfo> TablecolumninfoList1 = tcs.selectView(tableName1);
        Tableinfo tableinfo2 = ts.selectByPrimaryKey(datarelation.getTid2());
        String tableName2 = tableinfo2.getPhysicaltablename();
        List<Tablecolumninfo> TablecolumninfoList2 = tcs.selectView(tableName2);
        Tablecolumninfo tablecolumninfo1 = TablecolumninfoList1.get(datarelation.getCol1()-1);
        Tablecolumninfo tablecolumninfo2 = TablecolumninfoList2.get(datarelation.getCol2()-1);
        String columntype1 = tablecolumninfo1.getColumntype();
        String columntype2 = tablecolumninfo2.getColumntype();
        if(columntype1.equals(columntype2)){
            flag = datarelationService.insert(datarelation);
            tablecolumninfo1.setTid(datarelation.getTid1());
            tablecolumninfo2.setTid(datarelation.getTid2());
            tcs.insertSelective(tablecolumninfo1);
            tcs.insertSelective(tablecolumninfo2);
            if (flag >= 1) 
                return flag;
            else
                return flag;
        }else
            return flag;
    }

    
    /**
     * 增加方法     平台——获得数据表
     * @param req
     * @return
     */
    @ResponseBody
    @RequestMapping("admin_shuju_table")
    public List<Tableinfo> datatable(HttpServletRequest req) {
        HttpSession session = req.getSession();
        String ids = (String) session.getAttribute("No1");
        Integer id = Integer.parseInt(ids);
        List<Tableinfo> lists = ts.selectAll(id);
        return lists;
    }
    
    
    /**
     * 增加方法    平台——获得数据表关联集合
     * @param id
     * @param req  
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/admin_shuju_datarelation")
    public List<Tablecolumninfo> shuju_datarelation(Integer id,HttpServletRequest req) throws Exception {
        Tableinfo tableinfo = ts.selectByPrimaryKey(id);
        String tableName = tableinfo.getPhysicaltablename();
        List<Tablecolumninfo> TablecolumninfoList = tcs.selectView(tableName);
        return TablecolumninfoList;
    }
    
    /**
     * 
     * @param datarlation   平台——修改数据表关联状态
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/admin_shuju_updateByState")
    public Integer shuju_updateByState(Datarelation datarlation) throws Exception {
        return  datarelationService.updateByPrimaryKeySelective(datarlation);
    }
    
    
    
    
    
}
