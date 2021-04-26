package com.venkteshwarProject.utils;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.validation.FieldError;


@Component
@Scope(value = ConfigurableBeanFactory.SCOPE_SINGLETON)
public class ErrorBuilder {

	private MessageUtils messageUtils;

	public ErrorBuilder(MessageUtils messageUtils) {
		this.messageUtils = messageUtils;
	}

	private MessageItem getMessage(String messageCode, Locale locale, Object... params ) {
		return new MessageItem(messageCode, messageUtils.messageForKey(messageCode, locale, params));
	}

	private Map<String, List<MessageItem>> getGeneralErrors(List<MessageItem> messages) {
		Map<String, List<MessageItem>> errors = new HashMap<String, List<MessageItem>>();
		errors.put(Constants.GENERAL_MESSAGE_KEY, messages);
		return errors;
	}
	
	private Map<String, List<MessageItem>> getFieldErrors(String field, List<MessageItem> messages){
		Map<String, List<MessageItem>> errors = new HashMap<String, List<MessageItem>>();
		errors.put(field, messages);
		return errors;
	}

	public Map<String, List<MessageItem>> buildGeneral(String messageCode, Locale locale, Object... params) {
		List<MessageItem> messages = new ArrayList<MessageItem>();
		messages.add(getMessage(messageCode,locale, params));
		return getGeneralErrors(messages);
	}

	public Map<String, List<MessageItem>> buildGeneral(String[] messageCodes, Locale locale, Object... params) {
		List<MessageItem> messages = buildErrorList(messageCodes, locale, params);
		return getGeneralErrors(messages);
	}
	
	public Map<String, List<MessageItem>> buildFieldErrors(FieldError error, Locale locale, Object... params) {
		String code = error.getDefaultMessage() + "." + error.getField();
		List<MessageItem> messages = buildErrorList(new String[] { code }, locale, params);
		return getFieldErrors(error.getField(), messages);
	}


	public Map<String, Object> errorAttributes(Map<String, List<MessageItem>> list) {
		Map<String, Object> map = new HashMap<String, Object>();
		for (Map.Entry<String, List<MessageItem>> entry : list.entrySet()) {
			map.put(entry.getKey(), entry.getValue());
		}
		return map;
	}

	public List<MessageItem> buildErrorList(String[] messageCodes, Locale locale, Object... params) {
		List<MessageItem> messages = new ArrayList<MessageItem>();
		messages.add(getMessage(messageCodes[0], locale, params));
		return messages;
	}
}
