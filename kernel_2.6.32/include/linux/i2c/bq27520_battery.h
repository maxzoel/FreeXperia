#ifndef _BQ27520_BATTERY_H_
#define _BQ27520_BATTERY_H_

#include <linux/power_supply.h>

#define BQ27520_NAME "bq27520"
#define BQ27520_BTBL_MAX 13

struct bq27520_block_table {
	u8 adr;
	u8 data;
};

struct bq27520_platform_data {
	const char *name;
	char **supplied_to;
	size_t num_supplicants;
	int lipo_bat_max_volt;
	int lipo_bat_min_volt;
	unsigned char capacity_scaling[2];
	char *battery_dev_name;
	int polling_lower_capacity;
	int polling_upper_capacity;
	struct bq27520_block_table *udatap;
	int ocv_issue_capacity_threshold;
	void (*disable_algorithm)(bool);
};
#endif /* BQ27520_BATTERY_H_ */
