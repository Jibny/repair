package top.shmly.system.repair.web.controller;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.Base64Utils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import top.shmly.system.repair.vo.Result;

import java.io.File;
import java.io.IOException;

@Log4j2
@Api(tags = "上传图片")
@RestController
@CrossOrigin
public class UploadController {

    @Value("${repair.path.uploadWin}")
    private String uploadWin;
    @Value("${repair.path.uploadLinux}")
    private String uploadLinux;

    @PostMapping("upload")
    @ApiOperation(value = "图片上传", notes = "图片上传返回url")
    public Result<?> upload(@RequestParam("file") MultipartFile mf, @RequestParam(name = "diyPath", required = true) String diyPath) throws IOException {
        String os = System.getProperty("os.name");
        String ctxPath = null;
        if (os.toLowerCase().startsWith("win")) {
            ctxPath = uploadWin;
        } else {  //linux 和mac
            ctxPath = uploadLinux;
        }

        String fileName = null;
        File file = new File(ctxPath + File.separator + diyPath + File.separator);
        if (!file.exists()) {
            file.mkdirs();// 创建文件根目录
        }
        String orgName = mf.getOriginalFilename();// 获取文件名
        if (orgName.indexOf(".") != -1) {
            fileName = orgName.substring(0, orgName.lastIndexOf(".")) + "_" + System.currentTimeMillis() + orgName.substring(orgName.indexOf("."));
        } else {
            fileName = orgName + "_" + System.currentTimeMillis();
        }
        String savePath = file.getPath() + File.separator + fileName;
        File savefile = new File(savePath);
        FileCopyUtils.copy(mf.getBytes(), savefile);
        String dbpath = null;
        if (!StringUtils.isBlank(diyPath)) {
            dbpath = diyPath + File.separator + fileName;
        } else {
            dbpath = fileName;
        }
        if (dbpath.contains("\\")) {
            dbpath = dbpath.replace("\\", "/");
        }
        return Result.ok(dbpath);
    }

//    @PostMapping("upload")
//    @ApiOperation(value = "图片上传", notes = "图片上传返回url")
//    public String upload(@RequestParam("file") MultipartFile picture) throws IOException {
//        System.out.println(picture);
//        String s = Base64Utils.encodeToString(picture.getBytes());
//        //直接将s存储到数据库中 数据库字段 mediumtext   排序规则utf8_general_ci
//        //展示图片base64解码的时候:src data:image/png;base64,后面加上s
//        return s;
//    }
}
