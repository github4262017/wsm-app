package com.wms.util;

import java.math.BigInteger;
import java.text.DecimalFormat;

import com.wms.constant.WMSConstant;

public class WMSRNumberUtil{

	/**
	 * This returns the complete rnumber with prefix digits
	 * @param rNumber
	 * @return
	 */
	public static String getCompleteRNumber(BigInteger rNumber) {
		DecimalFormat formatter = new DecimalFormat(WMSConstant.R_NUMBER_DIGIT);
		String completeRNumber = formatter.format(rNumber);
		return completeRNumber;
	}
}
