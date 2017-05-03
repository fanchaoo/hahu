package com.fc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fc.model.AnswerComment;
import com.fc.model.QuestionComment;

public interface CommentMapper {

	List<QuestionComment> listQuestionCommentByQuestionId(@Param("questionId") Integer questionId);

	List<AnswerComment> listAnswerCommentByAnswerId(@Param("answerId") Integer answerId);

	void insertQuestionComment(QuestionComment comment);

	void insertQuestionCommentReply(QuestionComment comment);

	void insertAnswerComment(AnswerComment comment);

	void insertAnswerCommentReply(AnswerComment comment);

	int selectAnswerCommentCountByAnswerId(@Param("answerId") Integer answerId);

}
