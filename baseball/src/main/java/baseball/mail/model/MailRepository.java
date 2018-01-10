package baseball.mail.model;

import java.util.List;

import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;


@Service
public class MailRepository {
   
   @Resource
   SqlSessionTemplate template;
   
   public List<MailVo> list(MailVo vo) {
      System.out.println("���� �������丮 ����Ʈ vo�� �������̵� : "+vo.userid+", "+vo.getUserid());
      return template.selectList("mail.mailList",vo);
   }
   
   public void insert(MailVo vo) {
      System.out.println("���� �������丮 - �μ�Ʈ �޼ҵ�");
      System.out.println(vo);
      template.insert("mail.sendMail",vo);
   }

   public MailVo detail(MailVo vo) {
      System.out.println("��� �������丮 - ������ �޼ҵ�");   
      return template.selectOne("mail.mailCheck",vo);
   }
   
   public void delete(MailVo vo) {
      template.delete("mail.delete",vo);
   }
   
}