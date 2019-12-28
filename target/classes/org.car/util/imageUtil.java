package org.car.util;

import net.coobird.thumbnailator.Thumbnails;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.image.*;
import java.io.File;
import java.util.List;
import java.util.UUID;

public class imageUtil {

    /**
     * 截图工具，根据截取的比例进行缩放裁剪
     *
     * @param originalPath        待剪裁图片路径
     * @param newPath     剪裁后图片路径
     * @param zoomX       缩放后的X坐标
     * @param zoomY       缩放后的Y坐标
     * @param zoomW       缩放后的截取宽度
     * @param zoomH       缩放后的截取高度
     * @param scaleWidth  缩放后图片的宽度
     * @param scaleHeight 缩放后的图片高度
     * @return 是否成功
     * @throws Exception 任何异常均抛出
     */


    public static boolean imgCut(String originalPath, String newPath, double zoomX, double zoomY, double zoomW,
                                 double zoomH, double scaleWidth, double scaleHeight) throws Exception {
        Image img;
        ImageFilter cropFilter;
        BufferedImage bi = ImageIO.read(new File(originalPath));
        int fileWidth = bi.getWidth();
        int fileHeight = bi.getHeight();
        double scale = (double) fileWidth / scaleWidth;

        double realX = zoomX * scale;
        double realY = zoomY * scale;
        double realW = zoomW * scale;
        double realH = zoomH * scale;

        if (fileWidth >= realW && fileHeight >= realH) {
            Image image = bi.getScaledInstance(fileWidth, fileHeight, Image.SCALE_DEFAULT);
            cropFilter = new CropImageFilter((int) realX, (int) realY, (int) realW, (int) realH);
            img = Toolkit.getDefaultToolkit().createImage(
                    new FilteredImageSource(image.getSource(), cropFilter));
            BufferedImage bufferedImage = new BufferedImage((int) realW, (int) realH, BufferedImage.TYPE_INT_RGB);
            Graphics g = bufferedImage.getGraphics();
            g.drawImage(img, 0, 0, null);
            g.dispose();
            //输出文件
            return ImageIO.write(bufferedImage, "JPEG", new File(newPath));
        } else {
            return true;
        }
    }


    public static BufferedImage rotateImageByDegrees(BufferedImage img, double angle) {

        double rads = Math.toRadians(angle);
        double sin = Math.abs(Math.sin(rads)), cos = Math.abs(Math.cos(rads));
        int w = img.getWidth();
        int h = img.getHeight();
        int newWidth = (int) Math.floor(w * cos + h * sin);
        int newHeight = (int) Math.floor(h * cos + w * sin);

        BufferedImage rotated = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2d = rotated.createGraphics();
        AffineTransform at = new AffineTransform();
        at.translate((newWidth - w) / 2, (newHeight - h) / 2);

        int x = w / 2;
        int y = h / 2;

        at.rotate(rads, x, y);
        g2d.setTransform(at);
        g2d.drawImage(img, 0, 0, null);
        g2d.setColor(Color.blue);
        g2d.drawRect(0, 0, newWidth - 1, newHeight - 1);
        g2d.dispose();

        return rotated;
    }

    private static BufferedImage transform(BufferedImage originalImage) {

        AffineTransform tx = new AffineTransform();


// last, width = height and height = width :)
        tx.translate(originalImage.getHeight() / 2,originalImage.getWidth() / 2);
        tx.rotate(Math.PI / 2);
// first - center image at the origin so rotate works OK
        tx.translate(-originalImage.getWidth() / 2,-originalImage.getHeight() / 2);


        AffineTransformOp op = new AffineTransformOp(tx, AffineTransformOp.TYPE_BILINEAR);


// new destination image where height = width and width = height.
        BufferedImage newImage =new BufferedImage(originalImage.getHeight(), originalImage.getWidth(), originalImage.getType());
        op.filter(originalImage, newImage);


        return newImage;
    }

    BufferedImage toBufferedImage(Image image) {
        if (image instanceof BufferedImage) {
            return (BufferedImage) image;
        }
        // This code ensures that all the pixels in the image are loaded
        image = new ImageIcon(image).getImage();
        BufferedImage bimage = null;
        GraphicsEnvironment ge = GraphicsEnvironment
                .getLocalGraphicsEnvironment();
        try {
            int transparency = Transparency.OPAQUE;
            GraphicsDevice gs = ge.getDefaultScreenDevice();
            GraphicsConfiguration gc = gs.getDefaultConfiguration();
            bimage = gc.createCompatibleImage(image.getWidth(null),
                    image.getHeight(null), transparency);
        } catch (HeadlessException e) {
            // The system does not have a screen
        }
        if (bimage == null) {
            // Create a buffered image using the default color model
            int type = BufferedImage.TYPE_INT_RGB;
            bimage = new BufferedImage(image.getWidth(null),
                    image.getHeight(null), type);
        }
        // Copy image to buffered image
        Graphics g = bimage.createGraphics();
        // Paint the image onto the buffered image
        g.drawImage(image, 0, 0, null);
        g.dispose();
        return bimage;
    }

    public static String upload(HttpServletRequest request, String savePath){

        String path = request.getSession().getServletContext().getRealPath(savePath);
        System.out.println(savePath);

        String fileName = "";
        String outStr = "";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(factory);
        sfu.setHeaderEncoding("UTF-8"); // 处理中文问题
//      sfu.setSizeMax(1024 * 1024); // 限制文件大小
        try {
            List<FileItem> fileItems = sfu.parseRequest(request); // 解码请求
            for (FileItem fi : fileItems) {

                fileName = UUID.randomUUID() + fi.getName().substring(fi.getName().lastIndexOf("."), fi.getName().length());
                fi.write(new File(path, fileName));
                break;
            }

            outStr = "{\"success\":1,\"url\":\""+savePath+"/" + fileName + "\",\"file_name\":\"" + fileName + "\"}";

        } catch (Exception e) {

            outStr = "{\"success\":0,\"error_msg\":\"上传失败\"}";
            e.printStackTrace();
        }

        return outStr;

    }


}