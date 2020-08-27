package com.exam.project01;

import java.util.ArrayList;

public interface TestMapper {
	public abstract ArrayList<TeamTO> selectTeamList();
	public abstract ArrayList<PlayerTO> selectPlayerList(String teamName);
	public abstract ArrayList<VideoTO> selectVideoList();
}
